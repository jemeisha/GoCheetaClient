
package com.jemeisha.proxy;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.FaultAction;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "Logic", targetNamespace = "http://gocheeta.jemeisha.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Logic {


    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns java.lang.String
     * @throws NoSuchAlgorithmException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "login", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.Login")
    @ResponseWrapper(localName = "loginResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.LoginResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/loginRequest", output = "http://gocheeta.jemeisha.com/Logic/loginResponse", fault = {
        @FaultAction(className = NoSuchAlgorithmException_Exception.class, value = "http://gocheeta.jemeisha.com/Logic/login/Fault/NoSuchAlgorithmException")
    })
    public String login(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1)
        throws NoSuchAlgorithmException_Exception
    ;

    /**
     * 
     * @return
     *     returns java.util.List<com.jemeisha.proxy.Driver>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getAllDrivers", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.GetAllDrivers")
    @ResponseWrapper(localName = "getAllDriversResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.GetAllDriversResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/getAllDriversRequest", output = "http://gocheeta.jemeisha.com/Logic/getAllDriversResponse")
    public List<Driver> getAllDrivers();

    /**
     * 
     * @param arg0
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "isLoggedIn", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsLoggedIn")
    @ResponseWrapper(localName = "isLoggedInResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsLoggedInResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/isLoggedInRequest", output = "http://gocheeta.jemeisha.com/Logic/isLoggedInResponse")
    public boolean isLoggedIn(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginAdmin", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.LoginAdmin")
    @ResponseWrapper(localName = "loginAdminResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.LoginAdminResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/loginAdminRequest", output = "http://gocheeta.jemeisha.com/Logic/loginAdminResponse")
    public String loginAdmin(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1);

    /**
     * 
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "sayHello", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.SayHello")
    @ResponseWrapper(localName = "sayHelloResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.SayHelloResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/sayHelloRequest", output = "http://gocheeta.jemeisha.com/Logic/sayHelloResponse")
    public String sayHello();

    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns java.lang.String
     * @throws NoSuchAlgorithmException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginDriver", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.LoginDriver")
    @ResponseWrapper(localName = "loginDriverResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.LoginDriverResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/loginDriverRequest", output = "http://gocheeta.jemeisha.com/Logic/loginDriverResponse", fault = {
        @FaultAction(className = NoSuchAlgorithmException_Exception.class, value = "http://gocheeta.jemeisha.com/Logic/loginDriver/Fault/NoSuchAlgorithmException")
    })
    public String loginDriver(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1)
        throws NoSuchAlgorithmException_Exception
    ;

    /**
     * 
     * @param arg0
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "isAdminLoggedIn", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsAdminLoggedIn")
    @ResponseWrapper(localName = "isAdminLoggedInResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsAdminLoggedInResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/isAdminLoggedInRequest", output = "http://gocheeta.jemeisha.com/Logic/isAdminLoggedInResponse")
    public boolean isAdminLoggedIn(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "isDriverLoggedIn", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsDriverLoggedIn")
    @ResponseWrapper(localName = "isDriverLoggedInResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.IsDriverLoggedInResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/isDriverLoggedInRequest", output = "http://gocheeta.jemeisha.com/Logic/isDriverLoggedInResponse")
    public boolean isDriverLoggedIn(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg3
     * @param arg2
     * @param arg4
     * @param arg1
     * @param arg0
     * @return
     *     returns com.jemeisha.proxy.Customer
     * @throws NoSuchAlgorithmException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "go_cheeta")
    @RequestWrapper(localName = "register", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.Register")
    @ResponseWrapper(localName = "registerResponse", targetNamespace = "http://gocheeta.jemeisha.com/", className = "com.jemeisha.proxy.RegisterResponse")
    @Action(input = "http://gocheeta.jemeisha.com/Logic/registerRequest", output = "http://gocheeta.jemeisha.com/Logic/registerResponse", fault = {
        @FaultAction(className = NoSuchAlgorithmException_Exception.class, value = "http://gocheeta.jemeisha.com/Logic/register/Fault/NoSuchAlgorithmException")
    })
    public Customer register(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1,
        @WebParam(name = "arg2", targetNamespace = "")
        String arg2,
        @WebParam(name = "arg3", targetNamespace = "")
        String arg3,
        @WebParam(name = "arg4", targetNamespace = "")
        String arg4)
        throws NoSuchAlgorithmException_Exception
    ;

}
