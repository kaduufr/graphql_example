class Types::Input::NoteInputType < Types::BaseInputObject
  argument :title, String, required: true
  argument :body, String, required: true
end