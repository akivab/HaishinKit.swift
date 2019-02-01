//
//  HTTPStreamWithCallback.swift
//  FirebaseAuth
//
//  Created by Akiva Bamberger on 2/1/19.
//

import UIKit

open class HTTPStreamWithCallback: HTTPStream {
    public var streamId: String?
    open func publish(_ name: String?, delegate: TSFileWriterDelegate?) {
        self.tsWriter.fileWriterDelegate = delegate
        self.streamId = name
        super.publish(name)
    }

    open func stop() {
        self.mixer.stopRunning()
        self.tsWriter.stopRunning()
    }
}
