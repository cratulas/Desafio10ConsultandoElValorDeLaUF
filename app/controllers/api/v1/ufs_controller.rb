module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @client = Client.find_by(name: request.headers["cliente"])
                @client.log_in_count += 1
                @client.save
                @uf = Uf.find_by(date: params[:date])
                    if @uf == nil
                        @uf = 'La fecha ingresada es incorrecta o no se encuentra en la base de datos'
                        render json: @uf
                    else 
                        render json: @uf
                    end
                
            end

            def client
                @client = Client.find_by(name: params[:name])
                render json: @client
            end
        end
    end
end
