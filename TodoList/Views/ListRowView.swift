//
//  ListRowView.swift
//  TodoList
//
//  Created by Jan Kubín on 24.04.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item!", isCompleted: false)
    static var item2 = ItemModel(title: "Second item!", isCompleted: true)
    static var item3 = ItemModel(title: "Third item!", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
        .previewLayout(.sizeThatFits)
    }
}
