defmodule Ghuguti do
  # use Application
  alias Convertor.{ModelToCrdt, CrdtToModel}

  # def start(_type, _args) do
  #   import Supervisor.Spec, warn: false
  #   children = [
  #   ]

  #   opts = [strategy: :one_for_one, name: Ghuguti.Supervisor]
  #   Supervisor.start_link(children, opts)
  # end

  def to_model(crdt, kind) do
    CrdtToModel.to_model(crdt, kind)
  end

  def to_crdt(model) do
    ModelToCrdt.to_crdt(model)
  end

  def update_crdt(crdt, params) do
    ModelToCrdt.update_crdt(crdt, params)
  end

  def delete_field(crdt, [key, value] = params) do
    ModelToCrdt.delete_field(crdt, params)
  end
end
