
function B = quick_sort(A)
    B = quick_sort_recursion(A, 1, length(A));
end

function B = quick_sort_recursion(A, lo, hi)
    if lo >= 1 && hi >= 1 && lo < hi
        [p, A] = partition(A, lo, hi);
        A = quick_sort_recursion(A, lo, p - 1);
        A = quick_sort_recursion(A, p + 1, hi);
    end
    B = A;
end

function [p, B] = partition(A, lo, hi)
    pivot = A(hi);
    i = lo - 1;
    for j = lo:hi
        if A(j) <= pivot
            i = i + 1;
            tmp = A(i);
            A(i) = A(j);
            A(j) = tmp;
        end
    end
    p = i;
    B = A;
end