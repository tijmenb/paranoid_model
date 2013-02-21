# ParanoidModel

Will block you from deleting an ActiveRecord model by calling `model.delete`, `model.destroy` `Class.delete_all` and `Class.destroy_all`.

Also disables `Class.update_all` and `model.update_attribute`, because they have no validations.

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'paranoid_model', github: 'tijmenb/paranoid_model'
```

## Usage

```ruby
class SomeSensitiveModel < ActiveRecord::Base
    include ParanoidModel
end
```

```console
> SomeSensitiveModel.destroy_all
ParanoidModel::ParanoidModelException: :destroy_all is verboten for this model.
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
