class HomeController < ApplicationController
  def trash_em
    @trash_em = ToDoList.where(:done => true).destroy_all
    redirect_to root_url,notice: 'All Marked Activities Are Deleted'
  end

  def trash_em_all
    @trash_em_all = ToDoList.all.destroy_all
    redirect_to root_url,notice: 'All Activities Are Deleted'
  end
end
