/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TreeMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 *
 * @author Jorge
 */
public class FunctionManager {

    private String xmlFile;
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public FunctionManager(String xmlFile) {
        this.xmlFile = xmlFile;
        loadFile();
    }

    private void loadFile() {
        try {
            file = new FileInputStream(new File(xmlFile));
            builderFactory = DocumentBuilderFactory.newInstance();
            builder = builderFactory.newDocumentBuilder();
            xmlDocument = builder.parse(file);
            xPath = XPathFactory.newInstance().newXPath();
        } catch (ParserConfigurationException ex) {
            System.err.println("loadFile method, ParserConfigurationException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (SAXException ex) {
            System.err.println("loadFile method, SAXException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (IOException ex) {
            System.err.println("loadFile method, IOException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
    }

    public ArrayList<Function> get(int id) {
        try {
            ArrayList<Function> functions = new ArrayList<>();
            String expression = String.format("/functions/function[@id='%s']", id);
            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    int day = Integer.parseInt(element.getElementsByTagName("day").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int month = Integer.parseInt(element.getElementsByTagName("month").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int year = Integer.parseInt(element.getElementsByTagName("year").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int hour = Integer.parseInt(element.getElementsByTagName("hours").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int min = Integer.parseInt(element.getElementsByTagName("min").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int rowCant = Integer.parseInt(element.getElementsByTagName("rowCant").
                            item(0).getChildNodes().item(0).getNodeValue());
                    int columnCant = Integer.parseInt(element.getElementsByTagName("columnCant").
                            item(0).getChildNodes().item(0).getNodeValue());

                    Calendar date = new GregorianCalendar(year, month, day, hour, min);

                    functions.add(new Function(id, date, columnCant, rowCant, getSeatsList(id)));
                }
            }
            return functions;

        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    private TreeMap<String, Integer> getSeatsList(int id) throws XPathExpressionException {

        String expression = String.format("/functions/function[@id='%s']/seats", id);
        TreeMap<String, Integer> seats = new TreeMap<>();
        NodeList nodeListSeats = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

        for (int j = 0; j < nodeListSeats.getLength(); j++) {

            Node nodeSeat = nodeListSeats.item(j);

            if (nodeSeat.getNodeType() == Node.ELEMENT_NODE) {

                Element elementSeat = (Element) nodeSeat;

                String idS = nodeSeat.getAttributes().getNamedItem("id").getNodeValue();
                int state = Integer.parseInt(elementSeat.getElementsByTagName("state").
                        item(0).getChildNodes().item(0).getNodeValue());

                seats.put(idS, state);
            }
        }
        return seats;
    }

}
