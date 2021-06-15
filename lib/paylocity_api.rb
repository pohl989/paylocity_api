require 'paylocity_api/version'
require 'paylocity_api/config'
require 'paylocity_api/client'
require 'paylocity_api/encryption'
# require 'paylocity_api/payroll'
require 'paylocity_api/collection'
require 'paylocity_api/models/employee'
require 'paylocity_api/models/onboarding'
# require 'paylocity_api/models/earning'
# require 'paylocity_api/models/deduction'

module PaylocityApi
  class Error < StandardError; end

  def self.configure
    yield config
  end

  def self.config
    @@config ||= PaylocityApi::Config.new
  end
end



# # frozen_string_literal: true
# require_relative "paylocity_api/version"
# require_relative "paylocity_api/http_status_codes"

# require "faraday"
# require "oj"

# module PaylocityApi
#   class Error < StandardError; end
#   # Your code goes here...
#   def hello_world(name)
#     return "hello world #{name}"
#   end

#   module V2
#     class Client
#       # include HttpStatusCodes
#       include PaylocityApi::HttpStatusCodes

#       GithubAPIError = Class.new(StandardError)
#       BadRequestError = Class.new(GithubAPIError)
#       UnauthorizedError = Class.new(GithubAPIError)
#       ForbiddenError = Class.new(GithubAPIError)
#       ApiRequestsQuotaReachedError = Class.new(GithubAPIError)
#       NotFoundError = Class.new(GithubAPIError)
#       UnprocessableEntityError = Class.new(GithubAPIError)
#       ApiError = Class.new(GithubAPIError)


#       API_ENDPOINT = 'https://api.github.com'.freeze
#       API_REQUSTS_QUOTA_REACHED_MESSAGE = 'API rate limit exceeded'.freeze

#       attr_reader :oauth_token

#       def initialize(oauth_token = nil)
#         @oauth_token = oauth_token
#       end

#       def user_repos(username)
#         request(
#           http_method: :get,
#           endpoint: "users/#{username}/repos"
#         )
#       end
      
#       def user_orgs(username)
#         request(
#           http_method: :get,
#           endpoint: "users/#{username}/orgs"
#         )
#       end

#       private

#       def client
#         @_client ||= Faraday.new(API_ENDPOINT) do |client|
#           client.request :url_encoded
#           client.adapter Faraday.default_adapter
#           client.headers['Authorization'] = "token #{oauth_token}" if oauth_token.present?
#         end
#       end

#       def request(http_method:, endpoint:, params: {})
#         response = client.public_send(http_method, endpoint, params)
#         parsed_response = Oj.load(response.body)

#         return parsed_response if response_successful?

#         raise error_class, "Code: #{response.status}, response: #{response.body}"
#       end

#       def error_class
#         case response.status
#         when HTTP_BAD_REQUEST_CODE
#           BadRequestError
#         when HTTP_UNAUTHORIZED_CODE
#           UnauthorizedError
#         when HTTP_FORBIDDEN_CODE
#           return ApiRequestsQuotaReachedError if api_requests_quota_reached?
#           ForbiddenError
#         when HTTP_NOT_FOUND_CODE
#           NotFoundError
#         when HTTP_UNPROCESSABLE_ENTITY_CODE
#           UnprocessableEntityError
#         else
#           ApiError
#         end
#       end

#       def response_successful?
#         response.status == HTTP_OK_CODE
#       end

#       def api_requests_quota_reached?
#         response.body.match?(API_REQUSTS_QUOTA_REACHED_MESSAGE)
#       end
#     end
#   end
# end
