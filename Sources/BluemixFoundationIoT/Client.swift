/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Aphid
import Foundation


class Client: Aphid, MQTTDelegate {

	init(clientId: String, username: String? = nil, password: String? = nil) {
        	super.init(clientId: clientId, username: username, password: password)
       		super.delegate = self
   	}

	func didConnect() {
		print("Connected to Server \(config.host) | \(config.port)")
	}
	func didLoseConnection() {
		print("Connection to Server Lost")
	}

	func didCompleteDelivery(token: String) {
		//print(token)
	}

	func didReceiveMessage(topic: String, message: String) {
	 	print(topic, message)
	}
}
