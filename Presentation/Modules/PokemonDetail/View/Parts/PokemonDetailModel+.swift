//
//  PokemonDetailModel+.swift
//  Presentation
//
//  Created by Tomosuke Okada on 2020/03/20.
//

import Domain
import UIKit

extension PokemonDetailModel.Segment.Content {

    static var allCellType: [UITableViewCell.Type] {
        return [
            PokemonDetailImageCell.self,
            PokemonDetailPokemonTypeCell.self,
            PokemonDetailHeightCell.self,
            PokemonDetailWeightCell.self,
            PokemonDetailStatusCell.self
        ]
    }

    var cellType: UITableViewCell.Type {
        switch self {
        case .image:
            return PokemonDetailImageCell.self
        case .pokemonTypes:
            return PokemonDetailPokemonTypeCell.self
        case .height:
            return PokemonDetailHeightCell.self
        case .weight:
            return PokemonDetailWeightCell.self
        case .status:
            return PokemonDetailStatusCell.self
        }
    }
}
