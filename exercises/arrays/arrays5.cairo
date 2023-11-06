// task: arrays5.cairo
// Your task is to create an `Array` that holds four elements of type `felt252`.
// The first and last elements should both be 0.
// Make me compile and pass the test!
// Execute `starklings hint arrays` or use the `hint` watch subcommand for a hint.

// I AM NOT DONE

use array::ArrayTrait;
use option::OptionTrait;

fn create_array() -> Array<felt252> {
    let a = ArrayTrait::new(); // something to change here...
    a.append(1);
    a.append(2);
    a.append(3);
    a
}

// Don't change anything in the test
#[test]
fn test_array_elements() {
    let mut a = create_array();
    assert(a.len() == 4, "Array length is not 4");
    assert(a.pop_front().unwrap() == 0, "First element is not 0");
    assert(a.pop_back().unwrap() == 0, "Last element is not 0");
}
