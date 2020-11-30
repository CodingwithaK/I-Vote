class Api::IssuesController < ApplicationController
    def index
        issues = Issues.all
        render json: issues
    end
end
