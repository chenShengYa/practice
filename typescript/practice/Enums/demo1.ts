enum Direction {
    Up = 1,
    Down,
    Left,
    Right
}
console.log(Direction)

enum E {
    X, Y, Z
}

function f(obj: { Y: number }) {
    return obj.Y;
}

// Works, since 'E' has a property named 'X' which is a number.
console.log(f(E))

enum Enum {
    A
}
let a: any = Enum.A;
let nameOfA = Enum[a];

console.log(nameOfA)