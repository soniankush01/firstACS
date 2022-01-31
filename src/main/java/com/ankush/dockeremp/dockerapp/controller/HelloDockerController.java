package com.ankush.dockeremp.dockerapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloDockerController {

    @GetMapping("/helloDocker")
    public ResponseEntity sayHelloDocker () {
       return  new ResponseEntity<>("Hello from Docker App", HttpStatus.OK);
    }
}
