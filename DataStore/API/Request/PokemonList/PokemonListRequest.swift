//
//  PokemonListRequest.swift
//  API
//
//  Created by Tomosuke Okada on 2020/03/07.
//

import Foundation

struct PokemonListRequest {
    let offset: Int = 0
    // ページネーション実装するの面倒なので全件取得
    let limit: Int = 807
}

extension PokemonListRequest: PokeAPIRequestable {

    var urlString: String {
        return "https://pokeapi.co/api/v2/pokemon"
    }
}
