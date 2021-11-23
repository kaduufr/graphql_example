module Mutations
  class RemoveNote < Mutations::BaseMutation
    field :id, ID, null: true

    argument :id, ID, required: true

    def resolve(id:)
      begin
        note = Note.find(id)
        if note.destroy
          {id: id}
        end
      rescue
        raise GraphQL::ExecutionError, 'Not Found'
      end
    end
  end
end