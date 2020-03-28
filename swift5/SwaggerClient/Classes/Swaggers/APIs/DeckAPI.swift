//
// DeckAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class DeckAPI {
    /**
     Draw a card from a deck given a deck_id

     - parameter deckId: (path) The deck_id of the &#x60;Deck&#x60; which we wish to draw a card from 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func draw(deckId: String, completion: @escaping ((_ data: Cards?,_ error: Error?) -> Void)) {
        drawWithRequestBuilder(deckId: deckId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Draw a card from a deck given a deck_id
     - GET /deck/{deck_id}/draw/
     - 

     - examples: [{contentType=application/json, example={
  "cards" : [ {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  }, {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  } ]
}}]
     - parameter deckId: (path) The deck_id of the &#x60;Deck&#x60; which we wish to draw a card from 

     - returns: RequestBuilder<Cards> 
     */
    open class func drawWithRequestBuilder(deckId: String) -> RequestBuilder<Cards> {
        var path = "/deck/{deck_id}/draw/"
        let deckIdPreEscape = "\(deckId)"
        let deckIdPostEscape = deckIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deck_id}", with: deckIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Cards>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A new unshuffled deck of cards. A-spades, 2-spades, 3-spades... followed by diamonds, clubs, then hearts.

     - parameter jokersEnabled: (query) Add jokers_enabled as a GET or POST parameter to your request to include two Jokers in the deck. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func newDeck(jokersEnabled: Bool? = nil, completion: @escaping ((_ data: Deck?,_ error: Error?) -> Void)) {
        newDeckWithRequestBuilder(jokersEnabled: jokersEnabled).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A new unshuffled deck of cards. A-spades, 2-spades, 3-spades... followed by diamonds, clubs, then hearts.
     - GET /deck/new/
     - 

     - examples: [{contentType=application/json, example={
  "cards" : [ {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  }, {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  } ],
  "success" : true,
  "shuffled" : true,
  "piles" : { },
  "error" : "error",
  "deck_id" : "deck_id",
  "remaining" : 0
}}]
     - parameter jokersEnabled: (query) Add jokers_enabled as a GET or POST parameter to your request to include two Jokers in the deck. (optional)

     - returns: RequestBuilder<Deck> 
     */
    open class func newDeckWithRequestBuilder(jokersEnabled: Bool? = nil) -> RequestBuilder<Deck> {
        let path = "/deck/new/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "jokers_enabled": jokersEnabled
        ])

        let requestBuilder: RequestBuilder<Deck>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Shuffle an existing deck of Cards

     - parameter deckId: (path) The deck_id of the &#x60;Deck&#x60; which we wish to shuffle 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shuffleExistingDeck(deckId: String, completion: @escaping ((_ data: Deck?,_ error: Error?) -> Void)) {
        shuffleExistingDeckWithRequestBuilder(deckId: deckId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Shuffle an existing deck of Cards
     - GET /deck/{deck_id}/shuffle/
     - 

     - examples: [{contentType=application/json, example={
  "cards" : [ {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  }, {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  } ],
  "success" : true,
  "shuffled" : true,
  "piles" : { },
  "error" : "error",
  "deck_id" : "deck_id",
  "remaining" : 0
}}]
     - parameter deckId: (path) The deck_id of the &#x60;Deck&#x60; which we wish to shuffle 

     - returns: RequestBuilder<Deck> 
     */
    open class func shuffleExistingDeckWithRequestBuilder(deckId: String) -> RequestBuilder<Deck> {
        var path = "/deck/{deck_id}/shuffle/"
        let deckIdPreEscape = "\(deckId)"
        let deckIdPostEscape = deckIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deck_id}", with: deckIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Deck>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Shuffle a new deck of Cards

     - parameter deckCount: (query) Add deck_count as a GET or POST parameter to define the number of Decks you want to use. Blackjack typically uses 6 decks. The default is 1. (optional)
     - parameter cards: (query) If you want to use a partial deck, then you can pass the card codes you want to use using the cards parameter. Separate the card codes with commas, and each card code is a just a two character case-insensitive string. The value, one of A (for an ace), 2, 3, 4, 5, 6, 7, 8, 9, 0 (for a ten), J (jack), Q (queen), or K (king); The suit, one of S (Spades), D (Diamonds), C (Clubs), or H (Hearts). In this example, we are asking for a deck consisting of all the aces, twos, and kings. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shuffleNewDeck(deckCount: Int? = nil, cards: [String]? = nil, completion: @escaping ((_ data: Deck?,_ error: Error?) -> Void)) {
        shuffleNewDeckWithRequestBuilder(deckCount: deckCount, cards: cards).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Shuffle a new deck of Cards
     - GET /deck/new/shuffle/
     - 

     - examples: [{contentType=application/json, example={
  "cards" : [ {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  }, {
    "image" : "image",
    "code" : "code",
    "suit" : "suit",
    "value" : "value"
  } ],
  "success" : true,
  "shuffled" : true,
  "piles" : { },
  "error" : "error",
  "deck_id" : "deck_id",
  "remaining" : 0
}}]
     - parameter deckCount: (query) Add deck_count as a GET or POST parameter to define the number of Decks you want to use. Blackjack typically uses 6 decks. The default is 1. (optional)
     - parameter cards: (query) If you want to use a partial deck, then you can pass the card codes you want to use using the cards parameter. Separate the card codes with commas, and each card code is a just a two character case-insensitive string. The value, one of A (for an ace), 2, 3, 4, 5, 6, 7, 8, 9, 0 (for a ten), J (jack), Q (queen), or K (king); The suit, one of S (Spades), D (Diamonds), C (Clubs), or H (Hearts). In this example, we are asking for a deck consisting of all the aces, twos, and kings. (optional)

     - returns: RequestBuilder<Deck> 
     */
    open class func shuffleNewDeckWithRequestBuilder(deckCount: Int? = nil, cards: [String]? = nil) -> RequestBuilder<Deck> {
        let path = "/deck/new/shuffle/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "deck_count": deckCount?.encodeToJSON(), 
                        "cards": cards
        ])

        let requestBuilder: RequestBuilder<Deck>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}