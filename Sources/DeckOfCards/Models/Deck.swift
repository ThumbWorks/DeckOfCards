//
// Deck.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Deck: Codable {

    public var success: Bool
    public var error: String?
    public var deckId: String
    public var shuffled: Bool
    public var remaining: Int
    public var cards: [Card]?
    public var piles: JSONValue?

    public init(success: Bool, error: String?, deckId: String, shuffled: Bool, remaining: Int, cards: [Card]?, piles: JSONValue?) {
        self.success = success
        self.error = error
        self.deckId = deckId
        self.shuffled = shuffled
        self.remaining = remaining
        self.cards = cards
        self.piles = piles
    }

    public enum CodingKeys: String, CodingKey { 
        case success
        case error
        case deckId = "deck_id"
        case shuffled
        case remaining
        case cards
        case piles
    }

}

