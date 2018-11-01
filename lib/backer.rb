require_relative 'project'
require 'pry'

class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def projects
    @projects
  end

  def back_project(project)
     @backed_projects << project
     project.backers << self
  end

end
