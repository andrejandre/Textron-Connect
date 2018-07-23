//
//  NetworkHelper.swift
//  TextronConnect 3
//
//  Created by Andre Unsal on 7/15/18.
//  Copyright © 2018 Textron. All rights reserved.
//

import Foundation
import Alamofire

class NetworkHelper {
    
    class func fetchCryptoPrice(completion: @escaping (_ result: String) -> Void) {
        // endpoint url
        let BTC_URL = "https://www.bitstamp.net/api/v2/ticker/btcusd"
        
        Alamofire.request(BTC_URL).responseJSON { response in
            // fetch latest price
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestBTCPrice = dictionary["last"] as? String{
                        completion(latestBTCPrice)
                    }
                }
            }
        }
    }
    
    class func fetchXRPPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint url
        let XRP_URL = "https://www.bitstamp.net/api/v2/ticker/xrpusd"
        
        Alamofire.request(XRP_URL).responseJSON { response in
            // fetch latest price
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestXRPPrice = dictionary["last"] as? String{
                        completion(latestXRPPrice)
                    }
                }
            }
        }
    }
    
    class func fetchLTCPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint url
        let LTC_URL = "https://www.bitstamp.net/api/v2/ticker/ltcusd"
        
        Alamofire.request(LTC_URL).responseJSON { response in
            // fetch latest price
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestLTCPrice = dictionary["last"] as? String{
                        completion(latestLTCPrice)
                    }
                }
            }
        }
    }
    
    class func fetchETHPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint url
        let ETH_URL = "https://www.bitstamp.net/api/v2/ticker/ethusd"
        
        Alamofire.request(ETH_URL).responseJSON{ response in
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestETHPrice = dictionary["last"] as? String{
                        completion(latestETHPrice)
                    }
                }
            }
        }
    }
    
    class func fetchBCHPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint url
        let BCH_URL = "https://www.bitstamp.net/api/v2/ticker/bchusd"
        
        Alamofire.request(BCH_URL).responseJSON{ response in
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestBCHPrice = dictionary["last"] as? String{
                        completion(latestBCHPrice)
                    }
                }
            }
        }
    }
    
    class func fetchEURPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint url
        let EUR_URL = "https://www.bitstamp.net/api/v2/ticker/eurusd"
        
        Alamofire.request(EUR_URL).responseJSON{ response in
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let latestEURPrice = dictionary["last"] as? String{
                        completion(latestEURPrice)
                    }
                }
            }
        }
    }
    
   /* class func fetchTXTPrice(completion: @escaping(_ result: String) -> Void) {
        // endpoint URL
        let TXT_URL = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=TXT&interval=1min&apikey=DMAHOAXVGE774QAV"
        
        Alamofire.request(TXT_URL).responseJSON { response in
            if let json = response.result.value {
                if let dictionary = json as? NSDictionary {
                    if let TimeSeries = dictionary["Time Series (1min)"] as? NSDictionary{
                        print(type(of : Array(TimeSeries)[50].value.0))

                    }
                    
                        
                        
                        
                        /*if let myValue = arrayDict[50]["value"] as? NSDictionary{
                                if let openVal = myValue["1. open"] as? NSDictionary{
                                        print("\(String(describing: openVal))")
                                    }
                                    
                                }
 
 */
                        
                       // print("Time Series: \(String(describing: arrayDict[100]))") // MetaData)
                    }
                }
            }
        
        
            //print("Response: \(String(describing: response.result.value)))") //http
            //completion(String(describing: response.result.value))
        
    }
    
    
    */
}
