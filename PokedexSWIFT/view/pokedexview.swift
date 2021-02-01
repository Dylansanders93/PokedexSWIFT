//
//  pokedexview.swift
//  PokedexSWIFT
//
//  Created by Christopher Sanders on 1/31/21.
//

import SwiftUI

struct pokedexview: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = pokemonviewmodel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16 ){
                    ForEach(viewModel.pokemon) {pokemon in
                        pokemoncell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("MSSA POKEDEX")
        }
    }
}

struct pokedexview_Previews: PreviewProvider {
    static var previews: some View {
        pokedexview()
    }
}
