//
//  EncryptiomViewController.swift
//  Demos
//
//  Created by Kritika on 24/9/18.
//  Copyright © 2018 ranosys. All rights reserved.
//

// https://gist.github.com/khanlou/baf60dd62601b879eeba209943b04973
// https://stackoverflow.com/questions/32163848/how-to-convert-string-to-md5-hash-using-ios-swift
// Encryption Types: MD2, MD4, MD5, SHA1, SHA224, SHA256, SHA384, SHA512 (Swift 3+)
// Need to create brigding header for ------ <CommonCrypto/CommonCrypto.h> -------

import UIKit

class EncryptiomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("kritika".md5 ?? "")
        print("kritika".sha1 ?? "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension String {

    var md5: String? {
        guard let data = self.data(using: String.Encoding.utf8) else { return nil }

        let hash = data.withUnsafeBytes { (bytes: UnsafePointer<Data>) -> [UInt8] in
            var hash: [UInt8] = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            CC_MD5(bytes, CC_LONG(data.count), &hash)
            return hash
        }

        return hash.map { String(format: "%02x", $0) }.joined()
    }

    var sha1: String? {
        guard let data = self.data(using: String.Encoding.utf8) else { return nil }

        let hash = data.withUnsafeBytes { (bytes: UnsafePointer<Data>) -> [UInt8] in
            var hash: [UInt8] = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
            CC_SHA1(bytes, CC_LONG(data.count), &hash)
            return hash
        }

        return hash.map { String(format: "%02x", $0) }.joined()
    }
}
