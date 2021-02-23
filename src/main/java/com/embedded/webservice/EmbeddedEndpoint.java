package com.embedded.webservice;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC)
public class EmbeddedEndpoint {

	@WebMethod
	public String helloWorld() {
		return "Hello world!";
	}

}
