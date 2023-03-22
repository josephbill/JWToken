class CommentsController < ApplicationController
    # before_action : callback method that specifies a method to be executed before a given set of actions (CRUD)
    # usage
    # 1. Setting up instance variables 
    # 2. Checking authentication 
    # 3. Filtering parameters before they processed by action controllers 
    before_action :set_commentable


    def index 
        comments  = @commentable.comments
        render json: comments 
    end


    def create 
        comments  = @commentable.comments.new(comment_params)
        if comment.save
           render json: comment
        else
           render json: comment.errors, status: :unprocessable_entity  
        end
    end 

    private

    def set_commentable
        # request.path : returns the path of the current HTTP request , "/articles/id/comments"
        # spilt('/') : is called on the path to split it into an array of strings 
        # / : delimeter  ["articles","id","comments"]
        #  resource.singularize : takes the resource and the creates the singular form of the word 
        # classify : called singularized resource to convert the / its string to the corresponding classname 
        # constantize : called on the class name to get the actual class object. 
        # assumption : THE RESOURCE NAME IN THE PATH CORRESPONDS TO A VALID MODEL CLASS IN THE APPLICATION
       resource, id = request.path.spilt('/')[1,2]
       @commentable = resource.singularize.classify.constantize.find(id)
   
    end

    def comment_params 
        params.require(:comment).permit(:body)
    end

end


