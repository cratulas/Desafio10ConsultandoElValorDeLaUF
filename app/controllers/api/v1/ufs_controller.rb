module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @client = Client.find_by(name: request.headers["cliente"])
                @client.log_in_count += 1
                @client.save
                @uf = Uf.find_by(date: params[:date])
                render json: @uf
            end
        end
    end
end
