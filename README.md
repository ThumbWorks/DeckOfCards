# DeckOfCards

A swift 5 client implementation of [DeckOfCardsAPI](https://deckofcardsapi.com)

Generated using [Swaggerhub](https://app.swaggerhub.com/apis/Thumbworks/DeckOfCards/)


## Setup
If you're running an Xcode project:

  1. select `File` -> `Swift packages` -> `Add Package Dependency...`,
  2. add this repo's git file `git@github.com:ThumbWorks/DeckOfCards.git` in the text box
  3. pin the the appropriate version, `1.0` for instance.
  4. add `import DeckOfCards` 

## Sample usage:

### Create a new deck
``` swift 
DeckAPI.newDeck { (deck, error) in
    if let deck = deck {
        print("we got a deck \(deck) with ID \(deck.deckId) and \(deck.remaining) cards")
    }
    if let error = error {
        print("error \(error)")
    }
}
```

### Shuffle a deck
```swift
 DeckAPI.shuffleExistingDeck(deckId: deckId) { (deck, error) in
    if let deck = deck {
        print("shuffled: \(deck.deckId)")
    }
    if let error = error {
        print("error \(error)")
    }
}
```

### Add a card to a pile in a deck
``` swift
 PileAPI.addToPile(deckId: deckID,
                   pileName: pileName,
                   cards: cards.map({ card -> String in
                      return card.suit + card.value
                      }))
                { (deck, error) in
    if let deck = deck {
        print(deck.piles)
    }
    if let error = error {
        print(error)
    }
}
```
