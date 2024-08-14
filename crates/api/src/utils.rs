use core::ops::{Bound, RangeBounds};

use types::Integer;

#[inline]
pub(crate) fn range_to_limits<R>(range: R) -> (Integer, Integer)
where
    R: RangeBounds<usize>,
{
    let start = match range.start_bound() {
        Bound::Unbounded => 0,
        Bound::Excluded(&n) => (n + 1) as Integer,
        Bound::Included(&n) => n as Integer,
    };

    let end = match range.end_bound() {
        // The Neovim API generally uses -1 to indicate "until the end".
        Bound::Unbounded => -1,
        Bound::Excluded(&n) => n as Integer,
        Bound::Included(&n) => (n + 1) as Integer,
    };

    (start, end)
}
