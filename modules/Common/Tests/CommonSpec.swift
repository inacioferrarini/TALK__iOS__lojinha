//
//  CommonSpec.swift
//  Common
//
//  Created by Inacio Ferrarini on 01/04/19.
//  Copyright © 2019 inacioferrarini. All rights reserved.
//

import Quick
import Nimble
@testable import Common

class CommonSpec: QuickSpec {
    override func spec() {
        describe("CommonSpec") {
            it("works") {
                expect(Common.name) == "Common"
            }
        }
    }
}
