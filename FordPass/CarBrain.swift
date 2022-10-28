//
//  CarBrain.swift
//  FordPass
//
//  Created by Leandro Luna on 27/10/22.
//

import Foundation

struct CarBrain {
    let cars = [
        Car(model: "Meu FORD Explorer LIMITED 2008", photo: "car1", availableUpgrades: ["Sensor de ré com câmera", "Controle preciso de combustível", "Sensor de chuva", "Painel digital"]),
        Car(model: "Meu FORD Fiesta 2014", photo: "car2", availableUpgrades: ["Sensor de pressão de pneus", "Sensor de freios ABS", "Alarme", "Sensor de ponto cego"]),
        Car(model: "Meu FORD Edge 2010", photo: "car3", availableUpgrades: ["Alarme", "Sensor de ré com câmera", "Painel Digital", "Sensor de pressão de pneus"])
    ]
    
    func getCar(position: Int) -> Car{
        return cars[position]
    }
}
