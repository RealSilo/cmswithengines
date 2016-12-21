require_dependency "samurai/application_controller"

module Samurai
  module Tasks
    class TasksController < Samurai::Tasks::ApplicationController
      before_action :set_and_authorize_task, only: [:show, :edit, :update, :destroy]

      def index
        @tasks = current_user.tasks
      end

      def show
      end

      def new
        @task = Task.new
      end

      def edit
      end

      def create
        @task = Task.new(task_params)

        if @task.save
          redirect_to @task, notice: 'Task was successfully created.'
        else
          render :new
        end
      end

      def update
        if @task.update(task_params)
          redirect_to @task, notice: 'Task was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @task.destroy
        redirect_to tasks_url, notice: 'Task was successfully destroyed.'
      end

      private
        def set_and_authorize_task
          @task = Task.find(params[:id])
          authorize @task
        end

        def task_params
          params.fetch(:task, {}).permit(:title, :content, :user_id, :contact_id)
        end
    end
  end
end
