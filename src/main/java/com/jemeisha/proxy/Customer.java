
package com.jemeisha.proxy;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for customer complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="customer">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="cusFistName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="cusLastName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="cusMobNo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="password" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="username" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "customer", propOrder = {
    "cusFistName",
    "cusLastName",
    "cusMobNo",
    "password",
    "username"
})
public class Customer {

    protected String cusFistName;
    protected String cusLastName;
    protected String cusMobNo;
    protected String password;
    protected String username;

    /**
     * Gets the value of the cusFistName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCusFistName() {
        return cusFistName;
    }

    /**
     * Sets the value of the cusFistName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCusFistName(String value) {
        this.cusFistName = value;
    }

    /**
     * Gets the value of the cusLastName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCusLastName() {
        return cusLastName;
    }

    /**
     * Sets the value of the cusLastName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCusLastName(String value) {
        this.cusLastName = value;
    }

    /**
     * Gets the value of the cusMobNo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCusMobNo() {
        return cusMobNo;
    }

    /**
     * Sets the value of the cusMobNo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCusMobNo(String value) {
        this.cusMobNo = value;
    }

    /**
     * Gets the value of the password property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPassword() {
        return password;
    }

    /**
     * Sets the value of the password property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPassword(String value) {
        this.password = value;
    }

    /**
     * Gets the value of the username property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets the value of the username property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUsername(String value) {
        this.username = value;
    }

}
