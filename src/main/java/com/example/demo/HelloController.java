// package com.example.demo; 

// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RestController; 

// @RestController
// public class HelloController {
    
//      @GetMapping("/hello")
//      public String sayHello() {
//            return "Hello, Openshift" ;
//      }
// }

// --------------------
// package com.example.demo;

// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.GetMapping;

// @Controller
// public class HelloController {

//     @GetMapping("/hello")
//     public String sayHello() {
//         // templates/hello.html dosyasını döndürüyor
//         return "hello";
//     }
// }

package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        // static/hello.html dosyasına yönlendiriyor
        return "redirect:/hello.html";
    }
}

