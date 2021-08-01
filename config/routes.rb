Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  get 'testXSS' => "pages#about"

  #get 'example1' => "example1#cross_site_scripting"
  get 'example1' => "example1#cross_site_scripting"
  get 'example2' => "example2#cross_site_scripting2"
  get 'example3' => 'example3#cross_site_scripting3'
  get 'example4' => 'example4#cross_site_scripting4'
  get 'example5' => 'example5#cross_site_scripting5'
  get 'example6' => 'example6#cross_site_scripting6'
  get 'example7' => 'example7#cross_site_scripting7'
  get 'example8' => 'example8#cross_site_scripting8'
  get 'example9' => 'example9#fileread'
  get 'example10' => 'example10#fileread2'
  get 'example11' => 'example11#commandinjection'
  get 'sqlitest' => 'sqlitest#sqlitest'
  get 'sqlitest2' => 'sqlitest2#sqlitest2'
  get 'example12' => 'example12#cross_site_scripting12'
  get 'example13' => 'example13#constantizetest'
  get 'example14' => 'example14#testing_controller'

  get '/change', to: "posts#change"
  get '/sqlitest3', to: "sqlitest3#sqlitest3"
  get '/example15', to: "example15#CrossSiteScripting15"
  get '/example16', to: "example16#swalxsstesting"
  get '/example17', to: "example17#xssanitzetest"
  get '/example18', to: "example18#Sanitizerto_sXSS"
  get '/example19', to: "example19#redirect_to_test"
  get '/example20', to: "example20#ReverseTab"
  get '/example21', to: "example21#FileAcess2"
  get '/example22', to: "example22#cross_site_scripting22"
  get '/example23', to: "example23#md5hacking"
  get '/example24', to: "example24#vulnrender"
  get '/jwtplaying', to: "jwtplaying#jwtplaying"
  get '/EgiftTokenTest', to: "egift_token_test#egift_token_test_method"
  get '/xsshyperlink', to: "xsshyperlink#xss_method"
  #get '/vulnredner', to: "vulnredner#show"
 
  get 'about' => 'pages#about'

  resources :posts do
  	resources :comments
  end

end
