//
//  SettingsIcloudView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 27..
//

import SwiftUI

struct SettingsIcloudView: View {
    var body: some View {
		Form {
			Section("Last Successful Sync") {
				Text("2022/02/27  0:47")
			}
			ZStack {
				AngularGradient(colors: [.mint, .blue, .indigo, .secondary], center: .center)
		VStack(alignment: .leading, spacing: 15) {
			Text("Benefits of using iCloud.")
				.font(.system(size: 24, weight: .bold))
				.foregroundStyle(.primary)
				Text("With iCloud you can experience seamless transition between your Apple Devices, you don't have to worry about your Data.")
				.font(.body)
				.foregroundStyle(.secondary)
		}.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity)
		.padding(20)
			.background(.ultraThinMaterial)
			}.listRowInsets(EdgeInsets())
			Section("History") {
				HStack {
					Label {
						Text("Successful Sync")
					} icon: {
						Image(systemName: "arrow.counterclockwise.icloud.fill")
							.foregroundColor(.green)
					}
					Spacer()
					Text("0:47").foregroundColor(.secondary)
				}
				HStack {
					Label {
						Text("Error Syncing")
					} icon: {
						Image(systemName: "exclamationmark.icloud.fill")
							.foregroundColor(.red)
					}
					Spacer()
					Text("Yesterday").foregroundColor(.secondary)
				}
				HStack {
					Label {
						Text("Device Offline")
					} icon: {
						Image(systemName: "icloud.slash.fill")
							.foregroundColor(.blue)
					}
					Spacer()
					Text("2022/02/24").foregroundColor(.secondary)
				}
			}
		}.navigationTitle("iCloud")
    }
}

struct SettingsIcloudView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsIcloudView()
    }
}
