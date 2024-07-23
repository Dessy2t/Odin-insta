class ProfilesController < ApplicationController
  #{}def index
    #{}@users = users
 #{} end
  #{}def users
   #{} query = User.ransack(username_cont: search_query)
   #{} @users = query.result(distince: true)
  #{}end
 #{ def search_query
   #{}} params[:query]
  #{}end
  
  #{}def index
    #{}search_query = params[:query]
    #{}query = User.ransack(username_cont: search_query)
    #{}@users = query.result(distince: true)
  #{}end

  def index
    @users = User.ransack(username_cont: params[:query]).result(distinct: true)
  end
  
end
