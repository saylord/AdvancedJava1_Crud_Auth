package org.example.controller;

import org.example.entity.Appointment;
import org.example.entity.User;
import org.example.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class AppointmentController {
    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/news")
    public String userList(Model model) {
        model.addAttribute("allAppointments", appointmentService.allAppointments());
        return "news";
    }

    @PostMapping("/news/delete")
    public String deleteAppointment(@RequestParam(required = true, defaultValue = "" ) Long appointmentId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        if (action.equals("deleteAppointment")){
            appointmentService.deleteAppointments(appointmentId);
        }
        return "redirect:/news";
    }


}
