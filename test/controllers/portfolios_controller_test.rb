require 'test_helper'

class PortfolioControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:sally)
    log_in_as @user
  end

  # does not work on codeship
#  test "should create portfolio" do
 #   assert_difference 'Portfolio.count', 1 do
  #    post portfolios_path, params: { portfolio:
   #                                     {name: "Portfolio name",
    #                                     description: "Portfolio tagline",
     #                                    long_description: "Description"}}
    #end

  #end

end
