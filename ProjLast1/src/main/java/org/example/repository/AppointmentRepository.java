package org.example.repository;

import org.example.entity.Appointment;
import org.example.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;

public interface AppointmentRepository extends JpaRepository<Appointment, Long> {

}
