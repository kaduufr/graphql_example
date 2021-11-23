module Mutations
  class UpdateNote < BaseMutation
    field :post, Int , null: false

    argument :params, Types::Input::NoteInputType, required: true

    def resolve(params:)
      begin
        @note = Note.find params.id
        if @note.update(Hash(params))
          {
            post: 1
          }
        else
          raise GraphQL::Error, 'Erro ao atualizar'
        end
      rescue
        raise ActiveRecord::RecordNotFound, 'ID não encontrado'
      end
    end
  end
end
