# refer.luau

A tiny Luau library for sharing a mutable value by refer

## Install
```sh
pesde add yaeju1205/refer
```

## Usage

```luau
const refer = require(path to require)

const a = refer.create(0)

const b = a
const c = a

print("as", refer.as(a, 1)) -- as 1

print("b", refer.into(b)) -- b 1
print("c", refer.into(c)) -- c 1
```

## License

[MIT](LICENSE.md)
