//
//  Api.swift
//  TableFipeApp
//
//  Created by Admin on 12/13/21.
//

import Foundation

protocol ApiDelegate {
    
    func didGetPeriod(year:[Period])
    func didGetBrand(brands: [Brand])
    func didGetModel(models: [Modelo])
    func didGetYearModel(yearmodel: [AnoModelo])
    func didGetError(mensagem: String)
    
}

struct FipeApi {
    
    var delegate: ApiDelegate?
    
    func getYear() {
        
//                let response: [Period] = [Period(Codigo: 1, Mes: "Abril/2017"), Period(Codigo: 2, Mes: "Maio/2017"), Period(Codigo: 3, Mes: "Junho/2017")]
//
//                delegate?.didGetPeriod(year: response)
//        
        
        
//        let url = URL(string: "https://fipe.contrateumdev.com.br/api/ConsultarTabelaDeReferencia")!
//        var request = URLRequest(url: url)
//        request.setValue("$2y$10$8IAZn7HKq7QJWbh37N3GOOeRVv.sM9tcTLBRYwRuf2g98olRyqieW", forHTTPHeaderField: "chave")
//        request.httpMethod = "POST"
//
//
//
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {
//                return
//            }
//            DispatchQueue.main.async {
//
//                do {
//                    if let response = try? JSONDecoder().decode(Error.self, from: data) {
//                        delegate?.didGetError(mensagem: response.mensagem)
//
//                    } else if  let response = try? JSONDecoder().decode([Period].self, from: data) {
//
//                        self.delegate?.didGetPeriod(year: response)
//
//                    }
//                }
//            }
//        }
//        task.resume()
    }
    
    func getBrand() {
        
        let response: [Brand] = [Brand(Label: "Volkswagen", Value: 1), Brand(Label: "Mercedes", Value: 2), Brand(Label: "BMW", Value: 3)]
        
        delegate?.didGetBrand(brands: response)
    }
    
    func getModel() {
        
        let response: [Modelo] = [Modelo(Label: "Sedan", Value: 1), Modelo(Label: "Hatch", Value: 2), Modelo(Label: "Esportivo", Value: 3)]
        
        delegate?.didGetModel(models: response)
        
        
    }
    
    func getYearModel() {
        
        let response: [AnoModelo] = [AnoModelo(Label: "2014 Gasolina", Value: "2014-1"), AnoModelo(Label: "2013 Gasolina", Value: "2013-1"), AnoModelo(Label: "2012 Gasolina", Value: "2012-1"), AnoModelo(Label: "2011 Gasolina", Value: "2011-1")]
        
        delegate?.didGetYearModel(yearmodel: response)
    }
    
    
    
    
}









