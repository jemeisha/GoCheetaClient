
package com.jemeisha.proxy;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.jemeisha.proxy package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetAllCustomers_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllCustomers");
    private final static QName _IsAdminLoggedIn_QNAME = new QName("http://gocheeta.jemeisha.com/", "isAdminLoggedIn");
    private final static QName _LoginAdminResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "loginAdminResponse");
    private final static QName _LoginDriver_QNAME = new QName("http://gocheeta.jemeisha.com/", "loginDriver");
    private final static QName _GetAllDriversWithVehiclesResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllDriversWithVehiclesResponse");
    private final static QName _IsAdminLoggedInResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "isAdminLoggedInResponse");
    private final static QName _IsDriverLoggedInResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "isDriverLoggedInResponse");
    private final static QName _GetAllDrivers_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllDrivers");
    private final static QName _GetAllDriversResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllDriversResponse");
    private final static QName _LoginAdmin_QNAME = new QName("http://gocheeta.jemeisha.com/", "loginAdmin");
    private final static QName _GetBookingInfomation_QNAME = new QName("http://gocheeta.jemeisha.com/", "getBookingInfomation");
    private final static QName _BookingInformation_QNAME = new QName("http://gocheeta.jemeisha.com/", "BookingInformation");
    private final static QName _Customer_QNAME = new QName("http://gocheeta.jemeisha.com/", "Customer");
    private final static QName _NoSuchAlgorithmException_QNAME = new QName("http://gocheeta.jemeisha.com/", "NoSuchAlgorithmException");
    private final static QName _Driver_QNAME = new QName("http://gocheeta.jemeisha.com/", "Driver");
    private final static QName _GetAllOrdersResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllOrdersResponse");
    private final static QName _GetAllOrders_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllOrders");
    private final static QName _GetBookingInfomationResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "getBookingInfomationResponse");
    private final static QName _Login_QNAME = new QName("http://gocheeta.jemeisha.com/", "login");
    private final static QName _Return_QNAME = new QName("go_cheeta", "return");
    private final static QName _LoginDriverResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "loginDriverResponse");
    private final static QName _RegisterResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "registerResponse");
    private final static QName _IsDriverLoggedIn_QNAME = new QName("http://gocheeta.jemeisha.com/", "isDriverLoggedIn");
    private final static QName _IsLoggedIn_QNAME = new QName("http://gocheeta.jemeisha.com/", "isLoggedIn");
    private final static QName _Register_QNAME = new QName("http://gocheeta.jemeisha.com/", "register");
    private final static QName _LoginResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "loginResponse");
    private final static QName _SayHello_QNAME = new QName("http://gocheeta.jemeisha.com/", "sayHello");
    private final static QName _GetAllCustomersResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllCustomersResponse");
    private final static QName _SayHelloResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "sayHelloResponse");
    private final static QName _GetAllDriversWithVehicles_QNAME = new QName("http://gocheeta.jemeisha.com/", "getAllDriversWithVehicles");
    private final static QName _IsLoggedInResponse_QNAME = new QName("http://gocheeta.jemeisha.com/", "isLoggedInResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.jemeisha.proxy
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetBookingInfomation }
     * 
     */
    public GetBookingInfomation createGetBookingInfomation() {
        return new GetBookingInfomation();
    }

    /**
     * Create an instance of {@link GetAllDrivers }
     * 
     */
    public GetAllDrivers createGetAllDrivers() {
        return new GetAllDrivers();
    }

    /**
     * Create an instance of {@link GetAllDriversResponse }
     * 
     */
    public GetAllDriversResponse createGetAllDriversResponse() {
        return new GetAllDriversResponse();
    }

    /**
     * Create an instance of {@link LoginAdmin }
     * 
     */
    public LoginAdmin createLoginAdmin() {
        return new LoginAdmin();
    }

    /**
     * Create an instance of {@link BookingInfomation }
     * 
     */
    public BookingInfomation createBookingInfomation() {
        return new BookingInfomation();
    }

    /**
     * Create an instance of {@link Customer }
     * 
     */
    public Customer createCustomer() {
        return new Customer();
    }

    /**
     * Create an instance of {@link GetAllOrdersResponse }
     * 
     */
    public GetAllOrdersResponse createGetAllOrdersResponse() {
        return new GetAllOrdersResponse();
    }

    /**
     * Create an instance of {@link Driver }
     * 
     */
    public Driver createDriver() {
        return new Driver();
    }

    /**
     * Create an instance of {@link NoSuchAlgorithmException }
     * 
     */
    public NoSuchAlgorithmException createNoSuchAlgorithmException() {
        return new NoSuchAlgorithmException();
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link GetBookingInfomationResponse }
     * 
     */
    public GetBookingInfomationResponse createGetBookingInfomationResponse() {
        return new GetBookingInfomationResponse();
    }

    /**
     * Create an instance of {@link GetAllOrders }
     * 
     */
    public GetAllOrders createGetAllOrders() {
        return new GetAllOrders();
    }

    /**
     * Create an instance of {@link GetAllCustomers }
     * 
     */
    public GetAllCustomers createGetAllCustomers() {
        return new GetAllCustomers();
    }

    /**
     * Create an instance of {@link IsAdminLoggedIn }
     * 
     */
    public IsAdminLoggedIn createIsAdminLoggedIn() {
        return new IsAdminLoggedIn();
    }

    /**
     * Create an instance of {@link LoginAdminResponse }
     * 
     */
    public LoginAdminResponse createLoginAdminResponse() {
        return new LoginAdminResponse();
    }

    /**
     * Create an instance of {@link LoginDriver }
     * 
     */
    public LoginDriver createLoginDriver() {
        return new LoginDriver();
    }

    /**
     * Create an instance of {@link GetAllDriversWithVehiclesResponse }
     * 
     */
    public GetAllDriversWithVehiclesResponse createGetAllDriversWithVehiclesResponse() {
        return new GetAllDriversWithVehiclesResponse();
    }

    /**
     * Create an instance of {@link IsDriverLoggedInResponse }
     * 
     */
    public IsDriverLoggedInResponse createIsDriverLoggedInResponse() {
        return new IsDriverLoggedInResponse();
    }

    /**
     * Create an instance of {@link IsAdminLoggedInResponse }
     * 
     */
    public IsAdminLoggedInResponse createIsAdminLoggedInResponse() {
        return new IsAdminLoggedInResponse();
    }

    /**
     * Create an instance of {@link GetAllCustomersResponse }
     * 
     */
    public GetAllCustomersResponse createGetAllCustomersResponse() {
        return new GetAllCustomersResponse();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link SayHello }
     * 
     */
    public SayHello createSayHello() {
        return new SayHello();
    }

    /**
     * Create an instance of {@link SayHelloResponse }
     * 
     */
    public SayHelloResponse createSayHelloResponse() {
        return new SayHelloResponse();
    }

    /**
     * Create an instance of {@link IsLoggedInResponse }
     * 
     */
    public IsLoggedInResponse createIsLoggedInResponse() {
        return new IsLoggedInResponse();
    }

    /**
     * Create an instance of {@link GetAllDriversWithVehicles }
     * 
     */
    public GetAllDriversWithVehicles createGetAllDriversWithVehicles() {
        return new GetAllDriversWithVehicles();
    }

    /**
     * Create an instance of {@link IsDriverLoggedIn }
     * 
     */
    public IsDriverLoggedIn createIsDriverLoggedIn() {
        return new IsDriverLoggedIn();
    }

    /**
     * Create an instance of {@link LoginDriverResponse }
     * 
     */
    public LoginDriverResponse createLoginDriverResponse() {
        return new LoginDriverResponse();
    }

    /**
     * Create an instance of {@link RegisterResponse }
     * 
     */
    public RegisterResponse createRegisterResponse() {
        return new RegisterResponse();
    }

    /**
     * Create an instance of {@link IsLoggedIn }
     * 
     */
    public IsLoggedIn createIsLoggedIn() {
        return new IsLoggedIn();
    }

    /**
     * Create an instance of {@link Register }
     * 
     */
    public Register createRegister() {
        return new Register();
    }

    /**
     * Create an instance of {@link Vehicle }
     * 
     */
    public Vehicle createVehicle() {
        return new Vehicle();
    }

    /**
     * Create an instance of {@link Order }
     * 
     */
    public Order createOrder() {
        return new Order();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllCustomers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllCustomers")
    public JAXBElement<GetAllCustomers> createGetAllCustomers(GetAllCustomers value) {
        return new JAXBElement<GetAllCustomers>(_GetAllCustomers_QNAME, GetAllCustomers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsAdminLoggedIn }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isAdminLoggedIn")
    public JAXBElement<IsAdminLoggedIn> createIsAdminLoggedIn(IsAdminLoggedIn value) {
        return new JAXBElement<IsAdminLoggedIn>(_IsAdminLoggedIn_QNAME, IsAdminLoggedIn.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdminResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "loginAdminResponse")
    public JAXBElement<LoginAdminResponse> createLoginAdminResponse(LoginAdminResponse value) {
        return new JAXBElement<LoginAdminResponse>(_LoginAdminResponse_QNAME, LoginAdminResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginDriver }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "loginDriver")
    public JAXBElement<LoginDriver> createLoginDriver(LoginDriver value) {
        return new JAXBElement<LoginDriver>(_LoginDriver_QNAME, LoginDriver.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllDriversWithVehiclesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllDriversWithVehiclesResponse")
    public JAXBElement<GetAllDriversWithVehiclesResponse> createGetAllDriversWithVehiclesResponse(GetAllDriversWithVehiclesResponse value) {
        return new JAXBElement<GetAllDriversWithVehiclesResponse>(_GetAllDriversWithVehiclesResponse_QNAME, GetAllDriversWithVehiclesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsAdminLoggedInResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isAdminLoggedInResponse")
    public JAXBElement<IsAdminLoggedInResponse> createIsAdminLoggedInResponse(IsAdminLoggedInResponse value) {
        return new JAXBElement<IsAdminLoggedInResponse>(_IsAdminLoggedInResponse_QNAME, IsAdminLoggedInResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsDriverLoggedInResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isDriverLoggedInResponse")
    public JAXBElement<IsDriverLoggedInResponse> createIsDriverLoggedInResponse(IsDriverLoggedInResponse value) {
        return new JAXBElement<IsDriverLoggedInResponse>(_IsDriverLoggedInResponse_QNAME, IsDriverLoggedInResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllDrivers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllDrivers")
    public JAXBElement<GetAllDrivers> createGetAllDrivers(GetAllDrivers value) {
        return new JAXBElement<GetAllDrivers>(_GetAllDrivers_QNAME, GetAllDrivers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllDriversResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllDriversResponse")
    public JAXBElement<GetAllDriversResponse> createGetAllDriversResponse(GetAllDriversResponse value) {
        return new JAXBElement<GetAllDriversResponse>(_GetAllDriversResponse_QNAME, GetAllDriversResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdmin }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "loginAdmin")
    public JAXBElement<LoginAdmin> createLoginAdmin(LoginAdmin value) {
        return new JAXBElement<LoginAdmin>(_LoginAdmin_QNAME, LoginAdmin.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBookingInfomation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getBookingInfomation")
    public JAXBElement<GetBookingInfomation> createGetBookingInfomation(GetBookingInfomation value) {
        return new JAXBElement<GetBookingInfomation>(_GetBookingInfomation_QNAME, GetBookingInfomation.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BookingInfomation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "BookingInformation")
    public JAXBElement<BookingInfomation> createBookingInformation(BookingInfomation value) {
        return new JAXBElement<BookingInfomation>(_BookingInformation_QNAME, BookingInfomation.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Customer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "Customer")
    public JAXBElement<Customer> createCustomer(Customer value) {
        return new JAXBElement<Customer>(_Customer_QNAME, Customer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link NoSuchAlgorithmException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "NoSuchAlgorithmException")
    public JAXBElement<NoSuchAlgorithmException> createNoSuchAlgorithmException(NoSuchAlgorithmException value) {
        return new JAXBElement<NoSuchAlgorithmException>(_NoSuchAlgorithmException_QNAME, NoSuchAlgorithmException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Driver }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "Driver")
    public JAXBElement<Driver> createDriver(Driver value) {
        return new JAXBElement<Driver>(_Driver_QNAME, Driver.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllOrdersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllOrdersResponse")
    public JAXBElement<GetAllOrdersResponse> createGetAllOrdersResponse(GetAllOrdersResponse value) {
        return new JAXBElement<GetAllOrdersResponse>(_GetAllOrdersResponse_QNAME, GetAllOrdersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllOrders }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllOrders")
    public JAXBElement<GetAllOrders> createGetAllOrders(GetAllOrders value) {
        return new JAXBElement<GetAllOrders>(_GetAllOrders_QNAME, GetAllOrders.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBookingInfomationResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getBookingInfomationResponse")
    public JAXBElement<GetBookingInfomationResponse> createGetBookingInfomationResponse(GetBookingInfomationResponse value) {
        return new JAXBElement<GetBookingInfomationResponse>(_GetBookingInfomationResponse_QNAME, GetBookingInfomationResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Login }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "login")
    public JAXBElement<Login> createLogin(Login value) {
        return new JAXBElement<Login>(_Login_QNAME, Login.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Customer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "go_cheeta", name = "return")
    public JAXBElement<Customer> createReturn(Customer value) {
        return new JAXBElement<Customer>(_Return_QNAME, Customer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginDriverResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "loginDriverResponse")
    public JAXBElement<LoginDriverResponse> createLoginDriverResponse(LoginDriverResponse value) {
        return new JAXBElement<LoginDriverResponse>(_LoginDriverResponse_QNAME, LoginDriverResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegisterResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "registerResponse")
    public JAXBElement<RegisterResponse> createRegisterResponse(RegisterResponse value) {
        return new JAXBElement<RegisterResponse>(_RegisterResponse_QNAME, RegisterResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsDriverLoggedIn }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isDriverLoggedIn")
    public JAXBElement<IsDriverLoggedIn> createIsDriverLoggedIn(IsDriverLoggedIn value) {
        return new JAXBElement<IsDriverLoggedIn>(_IsDriverLoggedIn_QNAME, IsDriverLoggedIn.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsLoggedIn }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isLoggedIn")
    public JAXBElement<IsLoggedIn> createIsLoggedIn(IsLoggedIn value) {
        return new JAXBElement<IsLoggedIn>(_IsLoggedIn_QNAME, IsLoggedIn.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Register }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "register")
    public JAXBElement<Register> createRegister(Register value) {
        return new JAXBElement<Register>(_Register_QNAME, Register.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "loginResponse")
    public JAXBElement<LoginResponse> createLoginResponse(LoginResponse value) {
        return new JAXBElement<LoginResponse>(_LoginResponse_QNAME, LoginResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "sayHello")
    public JAXBElement<SayHello> createSayHello(SayHello value) {
        return new JAXBElement<SayHello>(_SayHello_QNAME, SayHello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllCustomersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllCustomersResponse")
    public JAXBElement<GetAllCustomersResponse> createGetAllCustomersResponse(GetAllCustomersResponse value) {
        return new JAXBElement<GetAllCustomersResponse>(_GetAllCustomersResponse_QNAME, GetAllCustomersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "sayHelloResponse")
    public JAXBElement<SayHelloResponse> createSayHelloResponse(SayHelloResponse value) {
        return new JAXBElement<SayHelloResponse>(_SayHelloResponse_QNAME, SayHelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAllDriversWithVehicles }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "getAllDriversWithVehicles")
    public JAXBElement<GetAllDriversWithVehicles> createGetAllDriversWithVehicles(GetAllDriversWithVehicles value) {
        return new JAXBElement<GetAllDriversWithVehicles>(_GetAllDriversWithVehicles_QNAME, GetAllDriversWithVehicles.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsLoggedInResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta.jemeisha.com/", name = "isLoggedInResponse")
    public JAXBElement<IsLoggedInResponse> createIsLoggedInResponse(IsLoggedInResponse value) {
        return new JAXBElement<IsLoggedInResponse>(_IsLoggedInResponse_QNAME, IsLoggedInResponse.class, null, value);
    }

}
