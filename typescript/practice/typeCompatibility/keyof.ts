interface namekey<T> {
    [key: string]: T;
}
let keys: keyof namekey<number>; // string
let value: namekey<number>['foo'];