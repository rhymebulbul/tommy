package com.example.tommy;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.PathParam;

@Path("/hello-world")
public class HelloResource {
    @GET
    @Produces("text/plain")
    public String hello() {
        return "Hello, World!";
    }
    @POST
    @Path("/{name}")
    @Produces("text/plain")
    public String customWelcome(@PathParam("name") String name) {
           return "Welcome " + name + "!";
    }
}