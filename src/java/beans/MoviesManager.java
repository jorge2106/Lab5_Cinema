package beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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

public class MoviesManager {

    private String xmlFile;
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public MoviesManager(String xmlFile) {
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

    public ArrayList<Movie> getAllBillboardMovies() {
        try {
            ArrayList<Movie> movies = new ArrayList<>();
            String expression = "/movies/movie[state='Cartelera']";
            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    int id = Integer.parseInt(node.getAttributes().getNamedItem("id").getNodeValue());
                    String name = element.getElementsByTagName("name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String sinopsis = element.getElementsByTagName("sinopsis")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlImage = element.getElementsByTagName("urlImage")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlVideo = element.getElementsByTagName("urlVideo")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    movies.add(new Movie(id, name, sinopsis, urlImage, urlVideo));
                }
            }
            return movies;

        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public ArrayList<Movie> getAllNextReleasesMovies() {
        try {
            ArrayList<Movie> movies = new ArrayList<>();
            String expression = "/movies/movie[state='Próximos Estrenos']";
            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    int id = Integer.parseInt(node.getAttributes().getNamedItem("id").getNodeValue());
                    String name = element.getElementsByTagName("name").item(0).getChildNodes().item(0).getNodeValue();
                    String sinopsis = element.getElementsByTagName("sinopsis")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlImage = element.getElementsByTagName("urlImage")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlVideo = element.getElementsByTagName("urlVideo")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    movies.add(new Movie(id, name, sinopsis, urlImage, urlVideo));
                }
            }
            return movies;

        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public Movie getBillboardById(int id) {
        try {
            Movie movie = new Movie();
            String expression = String.format("/movies/movie[@id='%s']", id);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    String name = element.getElementsByTagName("name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String sinopsis = element.getElementsByTagName("sinopsis")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlImage = element.getElementsByTagName("urlImage")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlVideo = element.getElementsByTagName("urlVideo")
                            .item(0).getChildNodes().item(0).getNodeValue();

                    movie = new Movie(id, name, sinopsis, urlImage, urlVideo);
                }
            }
            return movie;
        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public String getMovieState(int id) {
        try {
            String state = "";
            String expression = String.format("/movies/movie[@id='%s']", id);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    state = element.getElementsByTagName("state")
                            .item(0).getChildNodes().item(0).getNodeValue();

                }
            }
            return state;
        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }
}
