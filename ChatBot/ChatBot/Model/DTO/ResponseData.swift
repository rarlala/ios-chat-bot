//
//  ResponseData.swift
//  ChatBot
//
//  Created by Rarla on 2024/01/03.
//

import Foundation

// MARK: - Response
struct Response: Decodable {
    let id, object: String
    let created: Int
    let model, systemFingerprint: String
    let choices: [Choice]
    let usage: Usage
    
    enum CodingKeys: String, CodingKey {
        case id, object, created, model, choices, usage
        case systemFingerprint = "system_fingerprint"
    }
}

// MARK: - Choice
struct Choice: Decodable {
    let index: Int
    let message: Message
    let finishReason: String
    
    enum CodingKeys: String, CodingKey {
        case index, message
        case finishReason = "finish_reason"
    }
}

// MARK: - Message
struct Message: Decodable {
    let role, content: String
}

// MARK: - Usage
struct Usage: Decodable {
    let promptTokens, completionTokens, totalTokens: Int
    
    enum CodingKeys: String, CodingKey {
        case promptTokens = "prompt_tokens"
        case completionTokens = "completion_tokens"
        case totalTokens = "total_tokens"
    }
}