module DatabaseCleaner
  module RemoteApi
    class DatabaseCleansController < DatabaseCleaner::RemoteApi::ApplicationController

      def create
        DatabaseCleaner.start
        render json: {status: 'started'}
      end

      def show
        DatabaseCleaner.clean
        render json: {status: 'cleaned'}
      end

    end
  end
end
