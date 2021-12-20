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

	enum String {
		/// Accessibility. Favorite page button, enabled
		static var `resourcesTest_accessibility_addDiaryPageToFavorites`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.Accessibility.addDiaryPageToFavorites",
				tableName: "Localizable",
				bundle: .main,
				value: "Add to favorites",
				comment: "Accessibility. Favorite page button, enabled"
			)
		}
		/// Accesibility. Add image button
		static var `resourcesTest_accessibility_addImage`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.Accessibility.addImage",
				tableName: "Localizable",
				bundle: .main,
				value: "Add Image",
				comment: "Accesibility. Add image button"
			)
		}
		/// Accesibility. Add link button
		static var `resourcesTest_accessibility_addLink`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.Accessibility.addLink",
				tableName: "Localizable",
				bundle: .main,
				value: "Add Link",
				comment: "Accesibility. Add link button"
			)
		}
		/// App Settings App section title
		static var `resourcesTest_appSettings_appSectionTitle`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.appSectionTitle",
				tableName: "Localizable",
				bundle: .main,
				value: "App",
				comment: "App Settings App section title"
			)
		}
		
		static var `resourcesTest_appSettings_testNoComments`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.testNoComments",
				tableName: "Localizable",
				bundle: .main,
				value: "No comments",
				comment: ""
			)
		}
		
		static var `resourcesTest_appSettings_test_no_camel_case`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.test_no_camel_case",
				tableName: "Localizable",
				bundle: .main,
				value: "No camel case",
				comment: ""
			)
		}
		
		static var `resourcesTest_appSettings_test_no_camel_case_2`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.test_no_camel_case_2",
				tableName: "Localizable",
				bundle: .main,
				value: "No camel case 2",
				comment: ""
			)
		}
		
		static var `ten_resourcesTest_appSettings_number`: Swift.String {
			NSLocalizedString(
				"10_ResourcesTest.AppSettings.number",
				tableName: "Localizable",
				bundle: .main,
				value: "10",
				comment: ""
			)
		}
		/// App Settings screen title
		static var `resourcesTest_appSettings_appSettingsScreen`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.appSettingsScreen",
				tableName: "Localizable",
				bundle: .main,
				value: "App Settings",
				comment: "App Settings screen title"
			)
		}
		/// Button to topen an online app survey
		static var `resourcesTest_appSettings_appSurvey`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.appSurvey",
				tableName: "Localizable",
				bundle: .main,
				value: "App survey (anonymous online form to improve the app)",
				comment: "Button to topen an online app survey"
			)
		}
		/// App theme
		static var `resourcesTest_appSettings_appTheme`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.appTheme",
				tableName: "Localizable",
				bundle: .main,
				value: "App theme",
				comment: "App theme"
			)
		}
		/// App Settings Danger zone section footer text
		static var `resourcesTest_appSettings_dangerZoneSectionFooter`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.dangerZoneSectionFooter",
				tableName: "Localizable",
				bundle: .main,
				value: "There is no going back. Deleted content is lost forever, make sure you made a backup if necessary.",
				comment: "App Settings Danger zone section footer text"
			)
		}
		/// App Settings Danger zone section title
		static var `resourcesTest_appSettings_dangerZoneSectionTitle`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.dangerZoneSectionTitle",
				tableName: "Localizable",
				bundle: .main,
				value: "⚠️💣 Danger Zone 💣⚠️",
				comment: "App Settings Danger zone section title"
			)
		}
		/// Default icon pack
		static var `resourcesTest_appSettings_defaultIconPackApple`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.AppSettings.defaultIconPackApple",
				tableName: "Localizable",
				bundle: .main,
				value: "Default (SF Symbols by Apple)",
				comment: "Default icon pack"
			)
		}
		/// Sort search alphabetically from A to Z
		static var `resourcesTest_search_sortByPageTextAtoZ`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.Search.sortByPageTextAtoZ",
				tableName: "Localizable",
				bundle: .main,
				value: "Page text [A-Z]",
				comment: "Sort search alphabetically from A to Z"
			)
		}
		/// Email subject when reporting app crashes.
		static var `resourcesTest_sendEmail_crashEmailSubject`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.SendEmail.crashEmailSubject",
				tableName: "Localizable",
				bundle: .main,
				value: "[ResourcesTest] [CRASH] Report",
				comment: "Email subject when reporting app crashes."
			)
		}
		/// Feedback email body. After a placeholder message, there is a file attached which contains errors and crashes information.
		static var `resourcesTest_sendEmail_emailBody`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.SendEmail.emailBody",
				tableName: "Localizable",
				bundle: .main,
				value: "(write your message here)\n\n(below is a log file with some useful information about errors, crashes, etc. Keep the file only if you had any issues with the app, otherwise you can safely delete it from this email. No personal info is or will be collected.)\n",
				comment: "Feedback email body. After a placeholder message, there is a file attached which contains errors and crashes information."
			)
		}
		/// Feedback email subject.
		static var `resourcesTest_sendEmail_emailSubject`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.SendEmail.emailSubject",
				tableName: "Localizable",
				bundle: .main,
				value: "[ResourcesTest] [Feedback]",
				comment: "Feedback email subject."
			)
		}
		/// Icon pack unlock message
		static var `resourcesTest_unlockIconPack_unlockColorHandDrawnMessage`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.UnlockIconPack.unlockColorHandDrawnMessage",
				tableName: "Localizable",
				bundle: .main,
				value: "\"Color hand drawn\" icon pack.\nUnlock this awesome icon pack forever by tapping on the 'Unlock' button",
				comment: "Icon pack unlock message"
			)
		}
		/// App theme unlock message
		static var `resourcesTest_unlockTheme_unlockPinkThemeMessage`: Swift.String {
			NSLocalizedString(
				"ResourcesTest.UnlockTheme.unlockPinkThemeMessage",
				tableName: "Localizable",
				bundle: .main,
				value: "\"Pink\" app theme.\nLooks great with an icon pack! Unlock this awesome app theme forever by tapping on the 'Unlock' button",
				comment: "App theme unlock message"
			)
		}
		static var all: [Swift.String] {[
			`resourcesTest_accessibility_addDiaryPageToFavorites`,
			`resourcesTest_accessibility_addImage`,
			`resourcesTest_accessibility_addLink`,
			`resourcesTest_appSettings_appSectionTitle`,
			`resourcesTest_appSettings_testNoComments`,
			`resourcesTest_appSettings_test_no_camel_case`,
			`resourcesTest_appSettings_test_no_camel_case_2`,
			`ten_resourcesTest_appSettings_number`,
			`resourcesTest_appSettings_appSettingsScreen`,
			`resourcesTest_appSettings_appSurvey`,
			`resourcesTest_appSettings_appTheme`,
			`resourcesTest_appSettings_dangerZoneSectionFooter`,
			`resourcesTest_appSettings_dangerZoneSectionTitle`,
			`resourcesTest_appSettings_defaultIconPackApple`,
			`resourcesTest_search_sortByPageTextAtoZ`,
			`resourcesTest_sendEmail_crashEmailSubject`,
			`resourcesTest_sendEmail_emailBody`,
			`resourcesTest_sendEmail_emailSubject`,
			`resourcesTest_unlockIconPack_unlockColorHandDrawnMessage`,
			`resourcesTest_unlockTheme_unlockPinkThemeMessage`,
		]}
	}

	static var all: [Any] {
		R.Image.all + R.Color.all + R.String.all
	}

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
