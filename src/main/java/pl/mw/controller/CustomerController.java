package pl.mw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.mw.dao.CustomerDAO;
import pl.mw.entity.Customer;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    // injecting DAO into controller
    @Autowired
    private CustomerDAO customerDAO;

    @RequestMapping("/list")
    public String listCustomers(Model theModel){

        // get customers from the DAO
        List<Customer> theCustomers = customerDAO.getCustomers();

        // add the csutomers to the model
        theModel.addAttribute("customers", theCustomers);

        return "list-customers";
    }
}
