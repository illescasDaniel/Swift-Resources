//
//  R.swift
//  resourcesTest
//
//  Created by Daniel Illescas Romero on 8/12/21.
//


import UIKit

enum R {

	enum Image {
		static var `kickstarterEdiary`: UIImage { UIImage(named: "kickstarter-ediary")! }
		static var `someImages1_kickstarter4`: UIImage { UIImage(named: "kickstarter-4")! }
		static var `someImages1_blabla_kickstarter8`: UIImage { UIImage(named: "kickstarter-8")! }
		static var `avatar`: UIImage { UIImage(named: "avatar")! }
		static var `someImages_i_codeCopy`: UIImage { UIImage(named: "some images/i/code copy-")! }
		static var `someImages_kickstarter2`: UIImage { UIImage(named: "some images/kickstarter-2")! }
		static var all: [UIImage] {[
			`kickstarterEdiary`,
			`someImages1_kickstarter4`,
			`someImages1_blabla_kickstarter8`,
			`avatar`,
			`someImages_i_codeCopy`,
			`someImages_kickstarter2`,
		]}
	}

	enum Color {
		static var `someImages1_someColor`: UIColor { UIColor(named: "some_color")! }
		static var `accentColor`: UIColor { UIColor(named: "AccentColor")! }
		static var `ten`: UIColor { UIColor(named: "10")! }
		static var `eightSomething`: UIColor { UIColor(named: "8something")! }
		static var `someImages_color`: UIColor { UIColor(named: "some images/Color")! }
		static var all: [UIColor] {[
			`someImages1_someColor`,
			`accentColor`,
			`ten`,
			`eightSomething`,
			`someImages_color`,
		]}
	}

	static var all: [Any] {[
		R.Image.`kickstarterEdiary`,
		R.Image.`someImages1_kickstarter4`,
		R.Image.`someImages1_blabla_kickstarter8`,
		R.Image.`avatar`,
		R.Image.`someImages_i_codeCopy`,
		R.Image.`someImages_kickstarter2`,
		R.Color.`someImages1_someColor`,
		R.Color.`accentColor`,
		R.Color.`ten`,
		R.Color.`eightSomething`,
		R.Color.`someImages_color`,
	]}

	static func checkResources(shouldPrint: Bool = true) {
		R.all.forEach { resource in
			if shouldPrint {
				print("Asset available: \(resource)")
			} else {
				_ = resource
			}
		}
	}
}
