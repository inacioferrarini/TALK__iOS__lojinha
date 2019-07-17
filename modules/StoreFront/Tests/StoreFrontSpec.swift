//
//  StoreFrontSpec.swift
//  StoreFront
//
//  Created by Inacio Ferrarini on 01/04/19.
//  Copyright © 2019 inacioferrarini. All rights reserved.
//

import Quick
import Nimble
@testable import StoreFront

class StoreFrontSpec: QuickSpec {
    override func spec() {
        describe("StoreFrontSpec") {
            it("works") {
                expect(StoreFront.name) == "StoreFront"
            }
        }
    }
}
