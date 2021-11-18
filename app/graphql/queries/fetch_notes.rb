class Queries::FetchNotes < Queries::BaseQuery
  type [Types::NoteType], null: false

  def resolve
    Note.all.order(created_at: :desc )
  end
end