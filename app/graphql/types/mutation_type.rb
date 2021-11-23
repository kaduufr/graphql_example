module Types
  class MutationType < Types::BaseObject
    field :update_note, mutation: Mutations::UpdateNote
    field :add_note, mutation: Mutations::AddNote
    field :remove_note, mutation: Mutations::RemoveNote
  end
end