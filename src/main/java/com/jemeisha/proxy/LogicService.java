
package com.jemeisha.proxy;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "LogicService", targetNamespace = "http://gocheeta.jemeisha.com/", wsdlLocation = "http://localhost:8080/GoCheetaWebService/ws/logic?wsdl")
public class LogicService
    extends Service
{

    private final static URL LOGICSERVICE_WSDL_LOCATION;
    private final static WebServiceException LOGICSERVICE_EXCEPTION;
    private final static QName LOGICSERVICE_QNAME = new QName("http://gocheeta.jemeisha.com/", "LogicService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/GoCheetaWebService/ws/logic?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        LOGICSERVICE_WSDL_LOCATION = url;
        LOGICSERVICE_EXCEPTION = e;
    }

    public LogicService() {
        super(__getWsdlLocation(), LOGICSERVICE_QNAME);
    }

    public LogicService(WebServiceFeature... features) {
        super(__getWsdlLocation(), LOGICSERVICE_QNAME, features);
    }

    public LogicService(URL wsdlLocation) {
        super(wsdlLocation, LOGICSERVICE_QNAME);
    }

    public LogicService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, LOGICSERVICE_QNAME, features);
    }

    public LogicService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public LogicService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Logic
     */
    @WebEndpoint(name = "LogicPort")
    public Logic getLogicPort() {
        return super.getPort(new QName("http://gocheeta.jemeisha.com/", "LogicPort"), Logic.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Logic
     */
    @WebEndpoint(name = "LogicPort")
    public Logic getLogicPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://gocheeta.jemeisha.com/", "LogicPort"), Logic.class, features);
    }

    private static URL __getWsdlLocation() {
        if (LOGICSERVICE_EXCEPTION!= null) {
            throw LOGICSERVICE_EXCEPTION;
        }
        return LOGICSERVICE_WSDL_LOCATION;
    }

}
