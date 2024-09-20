//
//  Models.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 19/08/24.
//

import Foundation

struct Modelo: Identifiable {
    let id = UUID()
    let emoji: String
    let nombre: String
    let descripcion: String
}

let lista: [Modelo] = [
    Modelo(emoji: "🐾", nombre: "PetTracker", descripcion: "Rastreador GPS avanzado para monitorear la ubicación de tu mascota en tiempo real."),
    Modelo(emoji: "🩺", nombre: "VetHealth", descripcion: "App para gestionar la salud de tu mascota, incluyendo citas veterinarias y recordatorios de medicamentos."),
    Modelo(emoji: "🐕", nombre: "DogTrainer", descripcion: "Herramienta interactiva de entrenamiento para perros con lecciones personalizadas."),
    Modelo(emoji: "🐱", nombre: "CatCare", descripcion: "App dedicada al cuidado integral de gatos, desde nutrición hasta entretenimiento."),
    Modelo(emoji: "🎥", nombre: "PetCamLive", descripcion: "Monitorea a tu mascota desde cualquier lugar con cámaras en vivo y comunicación bidireccional."),
    Modelo(emoji: "🏖️", nombre: "PetExplorer", descripcion: "Encuentra destinos y actividades pet-friendly para disfrutar con tu mascota."),
    Modelo(emoji: "🍖", nombre: "PetNutrition", descripcion: "Guía nutricional personalizada para optimizar la alimentación de tu mascota según su raza y edad."),
    Modelo(emoji: "🧴", nombre: "PetGrooming", descripcion: "Agenda servicios de peluquería y cuidado personal para tu mascota con facilidad."),
    Modelo(emoji: "🏋️‍♂️", nombre: "PetFitness", descripcion: "Monitorea la actividad física y salud de tu mascota con estadísticas diarias."),
    Modelo(emoji: "🎉", nombre: "PetSocial", descripcion: "Red social para conectar con otros dueños de mascotas y organizar eventos locales.")
]
