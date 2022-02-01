import XCTest
@testable import McBopomofo

func charCode(_ string: String) -> UInt16 {
    let scalars = string.unicodeScalars
    return UInt16(scalars[scalars.startIndex].value)
}

class KeyHandlerBopomofoTests: XCTestCase {
    var handler = KeyHandler()

    override func setUpWithError() throws {
        LanguageModelManager.loadDataModels()
        handler = KeyHandler()
        handler.inputMode = .bopomofo
    }

    override func tearDownWithError() throws {
    }

    func testIgnoreEmpty() {
        let input = KeyHandlerInput(inputText: "", keyCode: 0, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreEnter() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.enter.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreUp() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.up.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result, "\(state)")
    }

    func testIgnoreDown() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.down.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result, "\(state)")
    }

    func testIgnoreLeft() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.left.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreRight() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.right.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnorePageUp() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.pageUp.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnorePageDown() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.pageDown.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreHome() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.home.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreEnd() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.end.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreDelete() {
        let input = KeyHandlerInput(inputText: " ", keyCode: KeyCode.delete.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreCommand() {
        let input = KeyHandlerInput(inputText: "A", keyCode: 0, charCode: 0, flags: [.command], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreOption() {
        let input = KeyHandlerInput(inputText: "A", keyCode: 0, charCode: 0, flags: [.option], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreNumericPad() {
        let input = KeyHandlerInput(inputText: "A", keyCode: 0, charCode: 0, flags: [.numericPad], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testIgnoreCapslock() {
        let input = KeyHandlerInput(inputText: "A", keyCode: 0, charCode: 0, flags: [.capsLock], isVerticalMode: false)
        var state: InputState = InputState.Empty()
        let result = handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertFalse(result)
    }

    func testPunctuationTable() {
        let enabled = Preferences.halfWidthPunctuationEnabled
        Preferences.halfWidthPunctuationEnabled = false
        let input = KeyHandlerInput(inputText: "`", keyCode: 0, charCode: charCode("`"), flags: .shift, isVerticalMode: false)
        var state: InputState = InputState.Empty()
        handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.ChoosingCandidate, "\(state)")
        if let state = state as? InputState.ChoosingCandidate {
            XCTAssertTrue(state.candidates.contains("，"))
        }
        Preferences.halfWidthPunctuationEnabled = enabled
    }

    func testHalfPunctuationComma() {
        let enabled = Preferences.halfWidthPunctuationEnabled
        Preferences.halfWidthPunctuationEnabled = true
        let input = KeyHandlerInput(inputText: "<", keyCode: 0, charCode: charCode("<"), flags: .shift, isVerticalMode: false)
        var state: InputState = InputState.Empty()
        handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, ",")
        }
        Preferences.halfWidthPunctuationEnabled = enabled
    }


    func testPunctuationComma() {
        let enabled = Preferences.halfWidthPunctuationEnabled
        Preferences.halfWidthPunctuationEnabled = false
        let input = KeyHandlerInput(inputText: "<", keyCode: 0, charCode: charCode("<"), flags: .shift, isVerticalMode: false)
        var state: InputState = InputState.Empty()
        handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "，")
        }
        Preferences.halfWidthPunctuationEnabled = enabled
    }

    func testHalfPunctuationPeriod() {
        let enabled = Preferences.halfWidthPunctuationEnabled
        Preferences.halfWidthPunctuationEnabled = true
        let input = KeyHandlerInput(inputText: ">", keyCode: 0, charCode: charCode(">"), flags: .shift, isVerticalMode: false)
        var state: InputState = InputState.Empty()
        handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, ".")
        }
        Preferences.halfWidthPunctuationEnabled = enabled
    }

    func testPunctuationPeriod() {
        let enabled = Preferences.halfWidthPunctuationEnabled
        Preferences.halfWidthPunctuationEnabled = false

        let input = KeyHandlerInput(inputText: ">", keyCode: 0, charCode: charCode(">"), flags: .shift, isVerticalMode: false)
        var state: InputState = InputState.Empty()
        handler.handle(input, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "。")
        }
        Preferences.halfWidthPunctuationEnabled = enabled
    }

    func testInputting() {
        var state: InputState = InputState.Empty()
        let keys = Array("vul3a945j4up gj bj4z83").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "小麥注音輸入法")
        }
    }

    func testInputtingNihao() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
        }
    }

    func testInputtingTianKong() {
        var state: InputState = InputState.Empty()
        let keys = Array("wu0 dj/ ").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "天空")
        }
    }

    func testCommittingNihao() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
        }

        let enter = KeyHandlerInput(inputText: " ", keyCode: 0, charCode: 13, flags: [], isVerticalMode: false)
        var committing: InputState?
        var empty: InputState?
        var count = 0

        handler.handle(enter, state: state) { newState in
            switch count {
            case 0:
                committing = newState
            case 1:
                empty = newState
            default:
                break
            }
            count += 1
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(committing is InputState.Committing, "\(state)")
        if let committing = committing as? InputState.Committing {
            XCTAssertEqual(committing.poppedText, "你好")
        }
        XCTAssertTrue(empty is InputState.Empty, "\(state)")
    }

    func testDelete() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }

        let left = KeyHandlerInput(inputText: " ", keyCode: KeyCode.left.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        let delete = KeyHandlerInput(inputText: " ", keyCode: KeyCode.delete.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        var errorCalled = false

        handler.handle(left, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        handler.handle(delete, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        handler.handle(delete, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
            errorCalled = true
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
        }
        XCTAssertTrue(errorCalled)

        errorCalled = false

        handler.handle(left, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 0)
        }

        handler.handle(delete, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.EmptyIgnoringPreviousState, "\(state)")
    }

    func testBackspace() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }

        let backspace = KeyHandlerInput(inputText: " ", keyCode: 0, charCode: 8, flags: [], isVerticalMode: false)

        handler.handle(backspace, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        handler.handle(backspace, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.EmptyIgnoringPreviousState, "\(state)")
    }

    func testCursor() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }

        let left = KeyHandlerInput(inputText: " ", keyCode: KeyCode.left.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        let right = KeyHandlerInput(inputText: " ", keyCode: KeyCode.right.rawValue, charCode: 0, flags: [], isVerticalMode: false)

        var errorCalled = false

        handler.handle(left, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        handler.handle(left, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 0)
        }

        handler.handle(left, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
            errorCalled = true
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 0)
        }
        XCTAssertTrue(errorCalled)

        handler.handle(right, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        handler.handle(right, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }

        errorCalled = false
        handler.handle(right, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
            errorCalled = true
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }
        XCTAssertTrue(errorCalled)
    }

    func testCandidateWithDown() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        let down = KeyHandlerInput(inputText: " ", keyCode: KeyCode.down.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        handler.handle(down, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.ChoosingCandidate, "\(state)")
        if let state = state as? InputState.ChoosingCandidate {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
            let candidates = state.candidates
            XCTAssertTrue(candidates.contains("你"))
        }
    }

    func testCandidateWithSpace() {
        let enabled = Preferences.chooseCandidateUsingSpace
        Preferences.chooseCandidateUsingSpace = true
        var state: InputState = InputState.Empty()
        let keys = Array("su3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
        }

        let space = KeyHandlerInput(inputText: " ", keyCode: 0, charCode: 32, flags: [], isVerticalMode: false)
        handler.handle(space, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.ChoosingCandidate, "\(state)")
        if let state = state as? InputState.ChoosingCandidate {
            XCTAssertEqual(state.composingBuffer, "你")
            XCTAssertEqual(state.cursorIndex, 1)
            let candidates = state.candidates
            XCTAssertTrue(candidates.contains("你"))
        }
        Preferences.chooseCandidateUsingSpace = enabled
    }

    func testHomeAndEnd() {
        var state: InputState = InputState.Empty()
        let keys = Array("su3cl3").map { String($0) }
        for key in keys {
            let input = KeyHandlerInput(inputText: key, keyCode: 0, charCode: charCode(key), flags: [], isVerticalMode: false)
            handler.handle(input, state: state) { newState in
                state = newState
            } candidateSelectionCallback: {
            } errorCallback: {
            }
        }
        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }

        let home = KeyHandlerInput(inputText: " ", keyCode: KeyCode.home.rawValue, charCode: 0, flags: [], isVerticalMode: false)
        let end = KeyHandlerInput(inputText: " ", keyCode: KeyCode.end.rawValue, charCode: 0, flags: [], isVerticalMode: false)

        handler.handle(home, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        XCTAssertTrue(state is InputState.Inputting, "\(state)")
        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 0)
        }

        handler.handle(end, state: state) { newState in
            state = newState
        } candidateSelectionCallback: {
        } errorCallback: {
        }

        if let state = state as? InputState.Inputting {
            XCTAssertEqual(state.composingBuffer, "你好")
            XCTAssertEqual(state.cursorIndex, 2)
        }
    }

}
