--[=[
Pointer of value

```luau
const a = refer.create(0)

const b = a
const c = a

print("as", refer.as(a, 1))

print("b", refer.into(b))
print("c", refer.into(c))
```
]=]
export type refer<T> = {
	inner: T,
}

const refer = {}

--[=[
Create new refer

```luau
const num_refer = refer.new(1)
```
]=]
function refer.new<T>(inner: T): refer<T>
	return {
		inner = inner,
	}
end

--[=[
Get value into refer

```luau
const num = refer.into(num_refer)
```
]=]
function refer.into<T>(self: refer<T>): T
	return self.inner
end

--[=[
Assign to refer inner

```luau
refer.as(num_refer, 10)

print(refer.into(num_refer))
```
]=]
function refer.as<T>(self: refer<T>, inner: T): T
	self.inner = inner
	return inner
end

return refer
