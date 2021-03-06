//
//  FavoritePokemonTranslator.swift
//  Domain
//
//  Created by Tomosuke Okada on 2020/03/15.
//

import DataStore
import Foundation

enum FavoritePokemonTranslatorProvider {

    static func provide() -> FavoritePokemonTranslator {
        return FavoritePokemonTranslatorImpl()
    }
}

protocol FavoritePokemonTranslator {
    func convert(from pokemons: [FavoritePokemon]) -> FavoritePokemonData
}

private struct FavoritePokemonTranslatorImpl: FavoritePokemonTranslator {

    func convert(from pokemons: [FavoritePokemon]) -> FavoritePokemonData {
        return FavoritePokemonData(pokemons)
    }
}
