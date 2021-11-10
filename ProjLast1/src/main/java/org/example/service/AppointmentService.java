package org.example.service;

import org.example.entity.Appointment;
import org.example.entity.Role;
import org.example.entity.User;
import org.example.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class AppointmentService {
    @Autowired
    private AppointmentRepository appointmentRepository;

    public List<Appointment> allAppointments() {
        return appointmentRepository.findAll();
    }

    public boolean deleteAppointments(Long appointment) {
        if (appointmentRepository.findById(appointment).isPresent()) {
            appointmentRepository.deleteById(appointment);
            return true;
        }
        return false;
    }


}
